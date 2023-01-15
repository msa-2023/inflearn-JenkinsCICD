<style>
.burk {
    background-color: red;
    color: yellow;
    display:inline-block;
}
</style>

# Cgroup  정리

## 1. 
[원본-카카오](https://tech.kakao.com/2020/06/29/cgroup-driver/)

### Cgroup 이란?

Cgroup은 
- Control Group의 약자
- 다수의 Process가 포함되어 있는 Process Group 단위로 Resource 사용량을 제한하고 격리시키는 Linux의 기능
- Resource는 CPU, Memory, Disk, Network를 의미
- Cgroup은 주로 Container의 Resource 제어를 위해서 많이 사용

### Cgroup 제어하기
Cgroup을 제어하는 방법은 
- cgroupfs을 이용하는 방법과 
- systemd에서 제공하는 API를 사용하는 방법 2가지가 존재

#### cgroupfs를 이용하여 Cgroup 제어

cgroupfs은 
- Cgroup 제어를 위해 탄생한 특수 File System
- Cgroup 정보는 Linux Kernel 내부에 관리하고 있으며, Linux Kernel은 Cgroup 제어를 위해서 별도의 System Call 제공하는 방식이 아닌 cgroupfs을 제공하고 있습

Linux Kernel이 갖고 있는 Cgroup 정보는 
- cgroupfs의 Directory와 File로 나타나며 Cgroup 제어는 Directory 생성, 삭제 및 File의 내용 변경을 통해서 이루어집니다. 따라서 cgroupfs으로 Cgroup을 제어할때는 “mkdir, rmdir, echo”와 같은 명령어들을 사용할 수 있습니다.


