from setuptools import find_packages, setup
import os
from glob import glob

package_name = 'ur5e_sim'

setup(
    name=package_name,
    version='0.0.0',
    packages=find_packages(exclude=['test']),
    data_files=[
        ('share/ament_index/resource_index/packages',
            ['resource/' + package_name]),
        ('share/' + package_name, ['package.xml']),
        (os.path.join('share', package_name, 'launch'), glob(os.path.join('launch', '*.launch.py'))),
        (os.path.join('share', package_name, 'urdf'), glob(os.path.join('urdf', '*.*'))),
        (os.path.join('share', package_name, 'urdf/inc'), glob(os.path.join('urdf/inc', '*.*'))),
        (os.path.join('share', package_name, 'meshes/collision'), glob(os.path.join('meshes/collision', '*.*'))),
        (os.path.join('share', package_name, 'meshes/visual'), glob(os.path.join('meshes/visual', '*.*'))),
        (os.path.join('share', package_name, 'config'), glob(os.path.join('config', '*.yaml*'))),
        (os.path.join('share', package_name, 'rviz'), glob(os.path.join('rviz', '*.rviz'))),
    ],
    install_requires=['setuptools'],
    zip_safe=True,
    maintainer='Mohamed Zaki',
    maintainer_email='zaki.x86@gmail.com',
    description='ROS2 package for control and simulation of UR5e Robot',
    license='MIT',
    tests_require=['pytest'],
    entry_points={
        'console_scripts': [
        ],
    },
)
