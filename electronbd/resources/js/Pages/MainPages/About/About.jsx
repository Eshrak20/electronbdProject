import HeadLine2 from "@/Components/MyComponents/HeadLine2";
import ImageText from "@/Components/MyComponents/ImageText";
import MainLayout from "@/Layouts/MainLayout";
import React from "react";
import Mission from "./Mission";
import Leader from "./Leader";
import HomeClients from "../Home/HomeClients/HomeClients";
import AboutBanner from "./AboutBanner";
import DynamicBanner from "@/Components/MyComponents/DynamicBanner";
import aboutImage from "../../../../../public/reactAssets/Images/AboutBanner/about.jpg";
import Management from "./Management";
import Achievements from "./Achievements";
const About = ({
    ourCustomer,
    leader,
    ManagementTable,
    achievements,
    ourPartner,
}) => {
    return (
        <>
            <MainLayout>
                <>
                    {/* <AboutBanner /> */}
                    <DynamicBanner
                        image={aboutImage}
                        title="About Us"
                        breadcrumb="Home / About Us"
                    />
                    <div className="max-w-full lg:max-w-screen-xl 2xl:max-w-screen-2xl mx-auto  md:py-10 2xl:py-20 lg:px-24 xl:px-28 2xl:px-20 gap-10 lg:gap-16 xl:gap-20 2xl:gap-32">
                        <div>
                            {/* <HeadLine2 title="About Us" text="text-gray-900" /> */}
                            <div className="md:-mt-28">
                                <ImageText
                                    description={`At Electron Engineering and Power Services, we are a highly experienced EPC (Engineering, Procurement, and Construction) company specializing in delivering comprehensive solutions across the Electrical, Mechanical, and Construction sectors. With a strong presence in the Energy industry, our expertise spans power generation, power grid construction, and power transmission, providing reliable and efficient energy solutions.\n
                                    We are committed to excellence in a diverse range of projects, including five-star hotel developments, industrial installations, healthcare facilities, and pharmaceutical sectors. Our team of experts also offers top-tier MEP (Mechanical, Electrical, and Plumbing) services and in-depth project consultancy to ensure successful execution and completion of complex projects.\n
                                    With a focus on innovation and quality, we strive to provide sustainable, cutting-edge engineering solutions tailored to the specific needs of each client, ensuring superior performance, safety, and operational efficiency in every project we undertake.`}
                                    imageUrl={`reactAssets/Images/HomePage/aboutHome.jpeg`}
                                />
                            </div>
                            <Mission />
                            <Achievements achievements={achievements} />
                            {/* <Leader leaders={leader} /> */}
                            <HomeClients
                                ourCustomer={ourCustomer}
                                about={true}
                                title="Our Customer"
                            />
                            <Management ManagementData={ManagementTable} />
                            <HomeClients
                                ourCustomer={ourPartner}
                                about={true}
                                title="Our Partner"
                            />
                        </div>
                    </div>
                </>
            </MainLayout>
        </>
    );
};

export default About;
