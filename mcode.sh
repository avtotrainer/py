#!/bin/bash
#
# ᲕᲘᲦᲔᲑᲗ ᲘᲜᲤᲝᲠᲛᲐᲪᲘᲐᲡ ᲕᲘᲠᲢᲣᲐᲚᲣᲠᲘ ᲓᲔᲡᲙᲢᲝᲞᲔᲑᲘᲡ ᲨᲔᲡᲐᲮᲔᲑ
workspaces=$(i3-msg -t get_workspaces)
#
# ᲕᲞᲝᲣᲚᲝᲑᲗ ᲞᲘᲠᲕᲔᲚ ᲗᲐᲕᲘᲡᲣᲤᲐᲡ workspace-Ს
free_workspace=""
while read -r num; do
  occupied=$(echo "$workspaces" | grep "\"num\":$num," | grep -c '"focused":true')
  if [ "$occupied" -eq 0 ]; then
     free_workspace=$num
     break
  fi
done <<< $(seq 1 8)  # manjaro-i3-ში არის 8 ვირტუალური დესკტოპი
#
# თუ მოიძებნა თავისუფალი workspace
if [ -n "$free_workspace" ]; then
# გადავერთვებით თავისუფალ workspace-ზე
   i3-msg "workspace $free_workspace" > /dev/null 2>&1
#                    
# გავუშვებთ  VS Code-ს მიმდინარე კატალოგიდან
   exec code .
fi
#
