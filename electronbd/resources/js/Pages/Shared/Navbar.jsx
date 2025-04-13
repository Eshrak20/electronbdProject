import { Link } from "@inertiajs/inertia-react"; // Inertia Link
import "./Navbar.css"; // Import external CSS file for custom styles
import { InertiaApp } from "@inertiajs/inertia-react";
import { useState, useEffect } from "react";
import {
    faFacebook,
    faLinkedin,
    faYoutube,
} from "@fortawesome/free-brands-svg-icons";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";

const Navbar = () => {
    const [isScrolled, setIsScrolled] = useState(false);

    useEffect(() => {
        const handleScroll = () => {
            if (window.scrollY > 50) {
                setIsScrolled(true);
            } else {
                setIsScrolled(false);
            }
        };

        window.addEventListener("scroll", handleScroll);
        return () => {
            window.removeEventListener("scroll", handleScroll);
        };
    }, []);

    const navOptions = (
        <>
            <li>
                <a
                    href="/"
                    className={`nav-item mt-2 ${
                        location.pathname === "/" ? "active" : ""
                    }`}
                >
                    Home
                </a>
            </li>
            <li className="relative group">
                <a
                    href="/about"
                    className={`nav-item mt-2 ${
                        location.pathname === "/about" ? "active" : ""
                    }`}
                >
                    About Us
                </a>
            </li>
            <li>
                <a
                    href="/projects"
                    className={`nav-item mt-2 ${
                        location.pathname === "/projects"
                            ? "active"
                            : "" || location.pathname.startsWith("/project/")
                            ? "active"
                            : ""
                    }`}
                >
                    Projects
                </a>
            </li>
            <li>
                <a
                    href="/product"
                    className={`nav-item mt-2 ${
                        location.pathname === "/product"
                            ? "active"
                            : "" || location.pathname.startsWith("/product/")
                            ? "active"
                            : ""
                    }`}
                >
                    Product
                </a>
            </li>
            {/* Press and Media Link Section */}

            {/* <li>
                <Link
                    href="/press"
                    className={`nav-item mt-2 ${
                        location.pathname === "/press"
                            ? "active"
                            : "" || location.pathname.startsWith("/press/")
                            ? "active"
                            : ""
                    }`}
                >
                    News
                </Link>
            </li> */}
            <li>
                <a
                    href="/equipment"
                    className={`nav-item mt-2 ${
                        location.pathname === "/equipment"
                            ? "active"
                            : "" || location.pathname.startsWith("/equipment/")
                            ? "active"
                            : ""
                    }`}
                >
                    Equipment
                </a>
            </li>
            <li>
                <a
                    href="/gallery"
                    className={`nav-item mt-2 ${
                        location.pathname === "/gallery"
                            ? "active"
                            : "" || location.pathname.startsWith("/gallery/")
                            ? "active"
                            : ""
                    }`}
                >
                    Gallery
                </a>
            </li>
            <li>
                <a
                    href="/contacts"
                    className={`nav-item mt-2 ${
                        location.pathname === "/contacts" ? "active" : ""
                    }`}
                >
                    Contacts
                </a>
            </li>
        </>
    );

    return (
        <>
            <div className="fixed top-0 left-0 w-full z-50 bg-white shadow-md">
                {/* Top Navbar */}

                <div className="w-full hidden md:flex justify-between z-10 bg-[#8B0304] shadow-md sticky top-0">
                    <div className="text-[#8B0304] text-xs">
                        This website is developed by Eshrak
                    </div>
                    <div className="text-gray-100 px-10 pb-1 flex justify-end items-center w-full pt-2 max-w-full lg:max-w-screen-xl 2xl:max-w-screen-2xl ">
                        <div className="flex gap-5 font-bold mr-56">
                            <p className="mb-1 text-white ">
                                Contact:{" "}
                                <span className="hover:text-gray-200">
                                    +88‭01670988233‬
                                </span>
                            </p>
                            <p>
                                Email:{" "}
                                <a
                                    href="mailto:info@example.com"
                                    className="text-white hover:text-gray-200"
                                >
                                    support@electron-bd.com
                                </a>
                            </p>
                        </div>
                        <div className="flex gap-6">
                            <a
                                href="https://www.facebook.com/share/1FW5KgrJBQ/"
                                aria-label="Facebook"
                                target="_blank"
                                className="text-white transition hover:text-gray-400"
                            >
                                <FontAwesomeIcon icon={faFacebook} />
                            </a>
                            <a
                                href="https://www.linkedin.com/company/eepsbd"
                                aria-label="LinkedIn"
                                target="_blank"
                                className="text-white transition hover:text-gray-400"
                            >
                                <FontAwesomeIcon icon={faLinkedin} />
                            </a>
                        </div>
                    </div>
                </div>
                {/*  Navbar */}

                <div className="w-full flex justify-between md:top-10 z-10 md:pb-2 bg-white bg-opacity-100">
                    <div className="w-full px-5 pt-2 py-1 max-w-full lg:max-w-screen-xl 2xl:max-w-screen-2xl flex items-center text-center justify-between mx-auto">
                        {/* Mobile Menu (Hidden on Desktop) */}
                        <div className="md:hidden font-bold text-3xl dropdown">
                            <button
                                tabIndex={0}
                                className="mr-5 text-[#1D232A]"
                            >
                                <svg
                                    xmlns="http://www.w3.org/2000/svg"
                                    className="h-7 w-7"
                                    fill="none"
                                    viewBox="0 0 24 24"
                                    stroke="currentColor"
                                >
                                    <path
                                        strokeLinecap="round"
                                        strokeLinejoin="round"
                                        strokeWidth="2"
                                        d="M4 6h16M4 12h8m-8 6h16"
                                    />
                                </svg>
                            </button>
                            <ul
                                tabIndex={0}
                                className="menu w-44 p-2 menu-sm dropdown-content font-semibold bg-base-100 rounded-lg shadow-lg z-30 text-[#1D232A]"
                            >
                                {navOptions}
                            </ul>
                        </div>

                        {/* Logo Section */}
                        <div>
                            <Link href="/">
                                <img
                                    src={`reactAssets/Logo.png`}
                                    alt="logo"
                                    className={`transition-all duration-300 ${
                                        isScrolled ? "w-40" : "w-72"
                                    } md:ml-16 pb-3 md:pb-0`}
                                />
                            </Link>
                        </div>

                        {/* Centered Navigation */}
                        <div className="navi flex-grow flex justify-end">
                            <nav className="hidden md:flex flex-grow justify-end">
                                <ul className="flex space-x-6 text-lg justify-end font-semibold">
                                    {navOptions}
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </>
    );
};

export default Navbar;
