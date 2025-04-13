import {
    faFacebook,
    faLinkedin,
    faYoutube,
} from "@fortawesome/free-brands-svg-icons";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";

const Footer = () => {
    return (
        <footer className="bg-gray-900 text-white">
            {/* Container */}
            <div className="max-w-full lg:max-w-screen-xl 2xl:max-w-screen-2xl mx-auto md:px-8 lg:px-12 p-8">
                {/* Top Section */}
                <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-10 md:gap-36">
                    {/* Head Office */}
                    <div>
                        <h3 className="text-xl font-bold mb-4">Head Office</h3>
                        <ul className="space-y-2">
                            <li>House # 11, Road # 04</li>
                            <li>Dhanmondi R/A, Dhaka-1205 Bangladesh</li>
                            <li>Phone: +88‭0-16-7098-8233</li>
                            <li>Email: support@electron-bd.com</li>
                        </ul>
                    </div>
                    {/* Factory Office */}
                    <div>
                        <h3 className="text-xl font-bold mb-4">
                            Factory Office
                        </h3>
                        <ul className="space-y-2">
                            <li>Vill: Gobindopur, P.O: Fularpara</li>
                            <li>Muksudpur, District: Gopalganj</li>
                            <li>Phone: +880-1613-333667</li>
                            <li>Email: info@electron-bd.com</li>
                        </ul>
                    </div>
                    {/* Quick Links */}
                    <div>
                        <h3 className="text-xl font-bold mb-4">Quick Links</h3>
                        <ul className="space-y-2">
                            <li>
                                <a href="/" className="hover:underline">
                                    Home
                                </a>
                            </li>
                            <li>
                                <a href="/about" className="hover:underline">
                                    About Us
                                </a>
                            </li>
                            <li>
                                <a href="/projects" className="hover:underline">
                                    Projects
                                </a>
                            </li>
                            <li>
                                <a href="/product" className="hover:underline">
                                    Products
                                </a>
                            </li>
                            <li>
                                <a
                                    href="/equipment"
                                    className="hover:underline"
                                >
                                    Equipment
                                </a>
                            </li>
                        </ul>
                    </div>
                    {/* Contact Us */}
                    <div>
                        <h3 className="text-xl font-bold mb-4">Contact Us</h3>
                        <ul className="space-y-2">
                            <li>
                                <a
                                    href="mailto:contact@example.com"
                                    className="hover:underline"
                                >
                                    support@electron-bd.com
                                </a>
                            </li>
                            <li>
                                <a
                                    href="mailto:contact@example.com"
                                    className="hover:underline"
                                >
                                    ceo@electron-bd.com
                                </a>
                            </li>
                            <li>
                                <a
                                    href="tel:+11234567890"
                                    className="hover:underline"
                                >
                                    +88‭0-16-7098-8233
                                </a>
                            </li>
                            <li>
                                <a href="/contacts" className="hover:underline">
                                    Contact
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
                {/* Bottom Section */}
                <div className="mt-8 border-t border-gray-700 pt-4 flex flex-col md:flex-row justify-between items-center space-y-4 md:space-y-0">
                    <div className="flex flex-wrap justify-center md:justify-start space-x-4">
                        <a
                            href="https://www.facebook.com/share/1FW5KgrJBQ/"
                            target="_blank"
                            rel="noopener noreferrer"
                            className="hover:text-blue-500"
                        >
                            {/* Facebook */}
                            <FontAwesomeIcon icon={faFacebook} />
                        </a>
                        <a
                            href="https://www.linkedin.com/company/eepsbd"
                            target="_blank"
                            rel="noopener noreferrer"
                            className="hover:text-blue-500"
                        >
                            {/* LinkedIn */}
                            <FontAwesomeIcon icon={faLinkedin} />
                        </a>
                    </div>

                    <div className="text-center md:text-left">
                        <a
                            href="https://syntaxss.com/"
                            className="font-bold"
                            target="_blank"
                        >
                            Design and Development by{" "}
                            <span className="text-green-500 hover:text-orange-500">
                                Syntax Soft Systems
                            </span>
                        </a>
                    </div>

                    <div className="mt-4 md:mt-0 text-sm text-center md:text-left">
                        <p className="mt-8">
                            Copyright © 2025, EEPS All Rights Reserved.
                        </p>
                        <p className="mt-2 text-[#111827]">
                            Website developed by{" "}
                            <span className="font-bold">Eshrak</span>
                            <span className="arrow-after"></span>{" "}
                            {/* eshrakg62@gmail.com */}
                        </p>
                    </div>
                </div>

                {/* Centered Text */}
            </div>
        </footer>
    );
};

export default Footer;
