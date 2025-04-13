import React from "react";
import BannerHome from "./Banner/BannerHome";
import MainLayout from "@/Layouts/MainLayout";
import ImageText from "@/Components/MyComponents/ImageText";
import HeadLine2 from "@/Components/MyComponents/HeadLine2";
import HomeServices from "./HomeServices/HomeServices";
import HomeSolutions from "./HomeSolutions/HomeSolutions";
import HomeProjects from "./HomeProjects/HomeProjects";
import HomeClients from "./HomeClients/HomeClients";
import HomeProducts from "./HomeProducts/HomeProducts";
import HomePress from "./HomePress/HomePress";
import { motion } from "framer-motion";
const Home = ({
    ourServices,
    ourSolution,
    ourProduct,
    ourProject,
    ourCustomer,
    ourPartner,
    press,
}) => {
    const containerVariants = {
        hidden: { opacity: 0 },
        show: {
            opacity: 1,
            transition: {
                staggerChildren: 0.2, // Staggers animations of all child components
            },
        },
    };
    return (
        <>
            <MainLayout>
                <motion.div
                    variants={containerVariants}
                    initial="hidden"
                    animate="show"
                    viewport={{ once: true }} // Animates only once when in view
                >
                    <BannerHome />
                    <div className="max-w-full lg:max-w-screen-xl 2xl:max-w-screen-2xl mx-auto md:py-10 2xl:py-20 lg:px-24 xl:px-28 2xl:px-20 gap-10 lg:gap-16 xl:gap-20 2xl:gap-32">
                        <HeadLine2 title="About Us" text="text-gray-900" />
                        <div className="md:-mt-28">
                            <ImageText
                                description={`At Electron Engineering and Power Services, we are a highly experienced EPC (Engineering, Procurement, and Construction) company specializing in delivering comprehensive solutions across the Electrical, Mechanical, and Construction sectors. With a strong presence in the Energy industry, our expertise spans power generation, power grid construction, and power transmission, providing reliable and efficient energy solutions.\n
                                We are committed to excellence in a diverse range of projects, including five-star hotel developments, industrial installations, healthcare facilities, and pharmaceutical sectors. Our team of experts also offers top-tier MEP (Mechanical, Electrical, and Plumbing) services and in-depth project consultancy to ensure successful execution and completion of complex projects.\n
                                With a focus on innovation and quality, we strive to provide sustainable, cutting-edge engineering solutions tailored to the specific needs of each client, ensuring superior performance, safety, and operational efficiency in every project we undertake.`}
                                imageUrl={`reactAssets/Images/HomePage/aboutHome.jpeg`}
                            />
                        </div>
                    </div>

                    <HomeServices ourServices={ourServices} />
                    <HomeSolutions ourSolution={ourSolution} />
                    <HomeProjects
                        ourProject={ourProject}
                        bgTitle={true}
                        isProjectPage={false}
                    />

                    <HomeClients
                        ourCustomer={ourCustomer}
                        title="Our Customer"
                    />
                    <HomeProducts
                        ourProduct={ourProduct}
                        bgTitle={true}
                        isProjectPage={false}
                    />
                    <HomeClients
                        ourCustomer={ourPartner}
                        title="Our Partner"
                    />
                    {/* <HomePress pressData={press} /> */}
                </motion.div>
            </MainLayout>
        </>
    );
};

export default Home;
