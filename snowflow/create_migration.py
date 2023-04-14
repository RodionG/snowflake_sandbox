import random
import string


def main():
    letters = string.ascii_lowercase
    uniq_name = ''.join(random.choice(letters) for i in range(20))
    with open(f'migrations/{uniq_name}.sql', 'w')as f:
        f.write('select * from user;')


if __name__ == '__main__':
    main()
