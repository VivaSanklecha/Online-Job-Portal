#include<stdio.h>
#include<stdlib.h>

typedef struct node{
  int data ;
  struct node* next;
}node;
node *front=NULL;
node *last=NULL;

typedef struct pagetable{
  int fno;
  char status;

}pagetable;
int max=0;

int *freeframe,*pageref;
int n,npageref;

int dpage,vpage,fno,pagefault=0;
int i,j;

int r=10,c=25;
void setposition(int r, int c){

  printf("\033[%d;%df",r,c);

}

int getfreeframes(){

    for(i=0;i<n;i++)
      if(freeframe[i]==0)
        return i;

  return -1;

}

int deleteFirstNode(){
  int x;

  node* t;
  t=(node*)malloc(sizeof(node));
  t=front;
  x=front->data;

  if(front==last){
    front=last=NULL;
  }else
    front=front->next;

  t->next=NULL;
  free(t);

  return x;
}

void appendNode(int page){

  node* temp=NULL;
  temp = (node*) malloc(sizeof(node));

  temp->data=page;
  temp->next=NULL;

  if(front==NULL){
    front = last = temp;
  }
  else{
    last->next=temp;
    last=last->next;
  }

}

void displayNode(){
  node*p;
  p=front;
  while(p!=NULL){
    printf("%d",p->data);
    p=p->next;
  }
  printf("NULL");


}

void accept(){
  printf("\nENTER TOTAL PAGES : ");
  scanf("%d",&npageref);
  pageref = (int*)malloc(sizeof(int)*npageref);

  for(i=0;i<npageref;i++){
    printf("\nENTER PAGE %d : ",(i+1));
    scanf("%d",&pageref[i]);

    if(pageref<0){
      printf("\nENTER VALID NUMBER THAT IS NOT -ve");
      i--;
    }

    if(max<pageref[i]);
      max=pageref[i];

  }

  printf("\nENTER TOTAL FRAMES : ");
  scanf("%d",&n);
  for(i=0;i<n;i++)
    freeframe[i]=0;

  printf("\nALL ENTERED PAGES ARE :  ");
  for(i=0;i<npageref;i++)
    printf("%d\t",pageref[i]);


}

void main(){
  accept();

  pagetable pt[max];
  for(i=0;i<=max;i++)
    pt[i].status='i';

  //main logic for FIFO Page replacement

  printf("\nREFERENCE PAGE : ");
  for(i=0;i<npageref;i++){

      dpage=pageref[i];
      setposition(r,c);
      printf("%d ",dpage);

      if(pt[dpage].status=='i'){

        pagefault++;
        fno=getfreeframes();

        if(fno!= -1){
            freeframe[fno]=dpage;
            pt[dpage].status='v';
            pt[dpage].fno=fno;

        }else{

            vpage=deleteFirstNode();
            
            pt[dpage].fno=pt[vpage].fno;
            pt[dpage].status='v';
            pt[vpage].status='i';

            freeframe[pt[vpage].fno]=dpage;

        }
        appendNode(dpage);

      }
      setposition(14,1);
      printf("\nLINKEDLIST : ");
      displayNode();

      for(j=0;j<n;j++){
        setposition(17+j,c);
        if(freeframe[j]!=0){
          printf("%d",freeframe[j]);
        }
      }
      c+=3;

      printf("\nPageFault : %d",pagefault);


  }

}